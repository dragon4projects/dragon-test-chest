# dragon-test-chest
dragon-test-chest

## Инструменты чтения

### Compare commits

Compare two commits/refs and return per-file stats plus compare metadata. This is a thin wrapper around `GithubPlugin.compare_commits` to provide a stable, compact response shape to connector consumers.

### Download user content

Download a GitHub private user image attachment URL. Use this only for private-user-images.githubusercontent.com URLs, such as GitHub issue or pull request image uploads. Use fetch or fetch_file for repository files.

### Download workflow artifact

Download a GitHub Actions workflow artifact ZIP archive. GitHub serves this endpoint through a temporary redirect; the underlying client follows that redirect before returning a reusable file reference for the ZIP bytes. Docs: [https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28#download-an-artifact](https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28#download-an-artifact)

### Fetch

Fetch approved public GitHub repository resources and repository files. Supports repositories, directories, code and issue search, and blob or raw file URLs. Pull requests, issues, commits, branches, workflow runs, releases, Git data, commit statuses, and rulesets include their collections and subresources via GET only, including branch-protection and ruleset reads. The active connection's repository permissions still apply. Managed GitHub App installation connections exclude administration access, so they cannot read branch-protection endpoints that require that permission. Contents URLs without a ref use the repository's default branch. JSON responses are returned unchanged; oversized or non-UTF-8 responses are rejected, so binary downloads are not supported.

### Fetch blob

Fetch blob content by SHA from the given repository.

### Fetch commit

Fetch a commit with its metadata, diff, and canonical URL.

### Fetch commit workflow runs

Fetch GitHub Actions workflow runs associated with a commit SHA. This wrapper currently filters to pull-request-triggered runs and returns the first page only. Docs: [https://docs.github.com/en/rest/actions/workflow-runs?apiVersion=2022-11-28#list-workflow-runs-for-a-repository](https://docs.github.com/en/rest/actions/workflow-runs?apiVersion=2022-11-28#list-workflow-runs-for-a-repository)

### Fetch file

Fetch file content by repository path, using the default branch when ref is omitted.

### Fetch issue

Fetch a GitHub issue. You must populate exactly one of `repository_full_name`, `repository_id`, or `repository_url` to select the issue's repository.

### Fetch issue comments

Fetch comments for a GitHub issue across all pages.

### Fetch pr

Fetch a pull request with its diff, metadata, and optionally comments.

### Fetch pr comments

Fetch a merged PR discussion timeline. The returned list combines issue comments, inline review comments, and review submissions into one normalized array. Docs: [https://docs.github.com/en/rest/issues/comments?apiVersion=2022-11-28](https://docs.github.com/en/rest/issues/comments?apiVersion=2022-11-28) Docs: [https://docs.github.com/en/rest/pulls/comments?apiVersion=2022-11-28](https://docs.github.com/en/rest/pulls/comments?apiVersion=2022-11-28) Docs: [https://docs.github.com/en/rest/pulls/reviews?apiVersion=2022-11-28](https://docs.github.com/en/rest/pulls/reviews?apiVersion=2022-11-28)

### Fetch pr file patch

Fetch the patch for one validated changed file in an accessible pull request. Call `list_pr_changed_filenames` first, then pass an exact returned path. A valid pull request that does not contain the path returns `patch=null`. A 404 means GitHub could not resolve the repository or pull request; do not retry other paths.

### Fetch pr patch

Fetch the patch for a GitHub pull request across all changed-file pages.

### Fetch workflow job logs

Fetch decoded logs for a GitHub Actions workflow job. GitHub serves this endpoint through a temporary redirect; the underlying client follows that redirect before decoding the bytes. Docs: [https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#download-job-logs-for-a-workflow-run-job](https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#download-job-logs-for-a-workflow-run-job)

### Fetch workflow job steps

Fetch steps for a GitHub Actions workflow job. Returns only step summaries, not the full job payload. Docs: [https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#get-a-job-for-a-workflow-run-job](https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#get-a-job-for-a-workflow-run-job)

### Fetch workflow run artifacts

Fetch artifacts for a GitHub Actions workflow run. This wrapper returns the first page only. Docs: [https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28#list-workflow-run-artifacts](https://docs.github.com/en/rest/actions/artifacts?apiVersion=2022-11-28#list-workflow-run-artifacts)

### Fetch workflow run jobs

Fetch jobs for a GitHub Actions workflow run. This wrapper returns the latest attempt's jobs from the first page only. Docs: [https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#list-jobs-for-a-workflow-run](https://docs.github.com/en/rest/actions/workflow-jobs?apiVersion=2022-11-28#list-jobs-for-a-workflow-run)

### Get commit combined status

Fetch the combined CI status and individual status checks for a commit.

### Get issue comment reactions

Fetch reactions for an issue comment.

### Get pr diff

Fetch just the diff or patch text for a pull request.

### Get pr info

Get metadata (title, description, refs, and status) for a pull request. This action does *not* include the actual code changes. If you need the diff or per-file patches, call `fetch_pr_patch` instead (or use `get_users_recent_prs_in_repo` with include_diff=True when listing the user's own PRs).

### Get pr reactions

Fetch reactions for a GitHub pull request.

### Get pr review comment reactions

Fetch reactions for a pull request review comment.

### Get profile

Retrieve the GitHub profile for the authenticated user.

### Get repo

Retrieve metadata for a GitHub repository. You must populate exactly one of `repository_full_name`, `repository_id`, or `repository_url`: - `repository_full_name`: `owner/name`, such as `openai/openai`. This maps to GitHub REST `owner` and `repo` path parameters. GitHub REST repository docs: https://docs.github.com/en/rest/repos/repos#get-a-repository - `repository_id`: numeric GitHub repository ID, such as `1296269`. - `repository_url`: repository URL or nested repository URL, such as a PR, issue, branch, file, REST API, or GHE.com API URL.

### Get repo collaborator permission

Return the collaborator permission level for a user on a repository.

### Get user login

Return the GitHub login for the authenticated user.

### Get users recent prs in repo

List the user's recent GitHub pull requests in a repository. `limit` is the final number of PRs returned. The connector paginates the underlying GitHub search endpoint to satisfy larger limits.

### List installations

List installations, optionally limited to managed setup account types.

### List installed accounts

List all accounts that the user has installed our GitHub app on.

### List pr changed filenames

List changed filenames for a PR across all paginated file-list pages.

### List pull request review threads

List inline review threads on a pull request, including resolved state. Returns GraphQL review thread nodes, including comment bodies and resolution metadata. Docs: https://docs.github.com/en/graphql/reference/objects#pullrequestreviewthread

### List pull request reviews

List review submissions on a pull request. Returns GraphQL review nodes normalized into the connector's review model. Docs: https://docs.github.com/en/graphql/reference/objects#pullrequestreview

### List recent issues

Return the most recent GitHub issues the user can access. `top_k` is the final result limit. The connector transparently paginates GitHub's issues API until that limit is reached or no more pages exist.

### List repositories

List repositories accessible to the authenticated user.

### List repositories by affiliation

List repositories accessible to the authenticated user filtered by affiliation.

### List repositories by installation

List repositories accessible to the authenticated user.

### Search

Search GitHub files and return matching excerpts when available. Provide a plain string query, avoid GitHub query flags such as is:pr. Include keywords that match file names, functions, or error messages. `repository_name` or `org` can narrow the search scope. Example: `query="tokenizer bug" repository_name="openai/tiktoken"` or `query="tokenizer bug" repository_name="tiktoken" org="openai"`. Fully qualified repository names keep their explicit owner even when org is set. Code search covers the default branch. Use fetch_file for full file contents. `topn` is the number of results to return.

## Инструменты записи

### Add comment to issue

Create a top-level PR Conversation comment (Issue comment).

### Add issue assignees

Add assignees to an issue or pull request. Returns a normalized issue snapshot after the mutation. Docs: https://docs.github.com/en/rest/issues/assignees?apiVersion=2022-11-28#add-assignees-to-an-issue

### Add issue labels

Add labels to an issue or pull request. Returns a normalized issue snapshot after the mutation. Docs: https://docs.github.com/en/rest/issues/labels?apiVersion=2022-11-28#add-labels-to-an-issue

### Add reaction to issue comment

Add a reaction to an issue comment.

### Add reaction to pr

Add a reaction to a GitHub pull request.

### Add reaction to pr review comment

Add a reaction to a pull request review comment.

### Add review to pr

Add a review to a pull request. review is required for REQUEST_CHANGES and COMMENT events.

### Convert pull request to draft

Convert an open pull request back to draft state.

### Create blob

Create a blob in the repository and return its SHA.

### Create branch

Create a new branch from exactly one existing commit SHA or base ref.

### Create commit

Create a commit pointing to tree_sha with one or more parents.

### Create file

Create a new UTF-8 text file through GitHub's contents API. Returns only the resulting commit SHA, not GitHub's full content/commit payload. Docs: https://docs.github.com/en/rest/repos/contents?apiVersion=2022-11-28#create-or-update-file-contents

### Create issue

Create a GitHub issue.

### Create pull request

Open a pull request in the repository.

### Create tree

Create a tree object in the repository from the given elements.

### Delete file

Delete a file through GitHub's contents API. Returns only the resulting commit SHA.

### Dismiss pull request review

Dismiss a submitted pull request review.

### Enable auto merge

Enable auto-merge for a pull request.

### Label pr

Label a pull request.

### Lock issue conversation

Lock an issue or pull request conversation.

### Mark pull request ready for review

Mark a draft pull request as ready for review.

### Merge pull request

Merge a pull request immediately.

### Remove issue assignees

Remove assignees from an issue or pull request.

### Remove issue label

Remove one label from an issue or pull request.

### Remove pull request reviewers

Remove individual or team reviewer requests from a pull request.

### Request pull request reviewers

Request individual or team reviewers on a pull request.

### Rerun failed workflow run jobs

Re-run all failed jobs in a GitHub Actions workflow run. Use this to retry only the failed jobs from a workflow run, instead of starting a full new attempt for successful jobs too.

### Rerun workflow job

Re-run one GitHub Actions workflow job.

### Resolve review thread

Resolve an inline pull request review thread.

### Unlock issue conversation

Unlock an issue or pull request conversation.

### Unresolve review thread

Mark an inline pull request review thread as unresolved.

### Update file

Replace a UTF-8 text file through GitHub's contents API. Returns the resulting commit SHA and content blob SHA. Use `content_sha` for a subsequent sequential update or deletion. Do not run update/delete writes for the same path in parallel.

### Update issue

Update a GitHub issue, including title/body, state, labels, assignees, or milestone.

### Update pull request

Update PR metadata, base branch, or open/closed state.



---

# Architecture Lab

This repository is a **test laboratory** for the storage/documentation architecture planned for the production repositories.

## Current experiment

First real material imported from the Cloud Library:

- `correspondence/handoffs/sama/` — SAMA continuity handoff
- `correspondence/handoffs/witch/` — WITCH continuity handoff
- `knowledge_base/generators/z-image-turbo/1.0/research/` — Z-Image Control/ControlNet research

The source documents were copied without rewriting their substantive content.

## Working rule

The lab tests whether a new sister can reconstruct project state and technical knowledge from repository material alone.

Nothing here is yet the final production architecture.

## ChatGPT attachment rule

Repository files are repository assets, not ChatGPT conversation attachments.

Do not bulk-import repository images into ChatGPT merely to inspect or reference them. A repository image is not automatically visual input to the current chat.

Prefer text-first repository references whenever visual inspection is not actually required.
