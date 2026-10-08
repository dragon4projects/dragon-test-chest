# ChatGPT Library DAT Restorer

Double-click restore_library.bat, then paste the full path to the extracted ChatGPT export folder.

It reads library_files.json and restores only MD and image files (PNG/JPG/JPEG/WEBP/GIF) from matching file_<id>.dat files. ZIP and other types are skipped.

Output: Library_restored\\md and Library_restored\\images.

The source archive is not modified except for the new output folder. A CSV manifest records the restored mappings.

The export metadata currently exposes original filenames/extensions, but no confirmed human-readable Library folder hierarchy, so this first version restores into two type folders and handles duplicate names with __2, __3, etc.
