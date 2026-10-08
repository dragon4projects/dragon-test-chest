param([Parameter(Mandatory=$true)][string]$ArchivePath)
$ErrorActionPreference="Stop"
$ArchivePath=$ArchivePath.Trim().Trim('"')
if(!(Test-Path -LiteralPath $ArchivePath -PathType Container)){throw "Archive folder not found: $ArchivePath"}
$meta=Join-Path $ArchivePath "library_files.json"
if(!(Test-Path -LiteralPath $meta -PathType Leaf)){throw "library_files.json not found"}
$out=Join-Path $ArchivePath "Library_restored"; $md=Join-Path $out "md"; $img=Join-Path $out "images"
New-Item -ItemType Directory -Force -Path $md,$img | Out-Null
Write-Host "Reading library_files.json..."
$records=Get-Content -LiteralPath $meta -Raw -Encoding UTF8 | ConvertFrom-Json
$allowed=@("md","png","jpg","jpeg","webp","gif")
$sel=@($records | Where-Object {$_.state -eq "ready" -and $_.file_extension -and ($allowed -contains $_.file_extension.ToString().ToLowerInvariant())})
$done=0;$missing=0;$errors=0;$manifest=New-Object System.Collections.Generic.List[object];$used=@{}
foreach($r in $sel){
  $id=[string]$r.file_id;$ext=[string]$r.file_extension;$src=Join-Path $ArchivePath ($id+".dat")
  if(!(Test-Path -LiteralPath $src -PathType Leaf)){ $missing++;$manifest.Add([pscustomobject]@{file_id=$id;original_name=$r.file_name;status="MISSING_DAT";output=""});continue }
  $destDir=if($ext.ToLowerInvariant() -eq "md"){$md}else{$img}
  $name=[string]$r.file_name;if([string]::IsNullOrWhiteSpace($name)){$name="$id.$ext"}
  foreach($c in [IO.Path]::GetInvalidFileNameChars()){$name=$name.Replace([string]$c,"_")}
  if($name.EndsWith(".")){$name=$name.TrimEnd(".")}
  $base=[IO.Path]::GetFileNameWithoutExtension($name);$extension=[IO.Path]::GetExtension($name)
  $key=($destDir+"|"+$name).ToLowerInvariant()
  if($used.ContainsKey($key) -or (Test-Path -LiteralPath (Join-Path $destDir $name))){
    $n=2
    do{$candidate=$base+"__"+$n+$extension;$key=($destDir+"|"+$candidate).ToLowerInvariant();$n++}while($used.ContainsKey($key) -or (Test-Path -LiteralPath (Join-Path $destDir $candidate)))
    $name=$candidate
  }
  try{Copy-Item -LiteralPath $src -Destination (Join-Path $destDir $name);$used[$key]=$true;$done++;$manifest.Add([pscustomobject]@{file_id=$id;original_name=$r.file_name;status="RESTORED";output=$name})}
  catch{$errors++;$manifest.Add([pscustomobject]@{file_id=$id;original_name=$r.file_name;status="ERROR";output=$_.Exception.Message})}
  if(($done%100)-eq 0){Write-Host "Restored: $done / $($sel.Count)"}
}
$manifest | Export-Csv -LiteralPath (Join-Path $out "restore_manifest.csv") -NoTypeInformation -Encoding UTF8
@"
ChatGPT Library restore
Selected: $($sel.Count)
Restored: $done
Missing DAT: $missing
Errors: $errors
Types: MD + PNG/JPG/JPEG/WEBP/GIF
ZIP and all other types were skipped.
Original archive files were not modified.
"@ | Set-Content -LiteralPath (Join-Path $out "README.txt") -Encoding UTF8
Write-Host ""
Write-Host "DONE"
Write-Host "Restored: $done"
Write-Host "Missing: $missing"
Write-Host "Errors: $errors"
Write-Host "Output: $out"
