# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 5000

# Make a note about contributors not in the organization
unless github.api.organization_member?('DangerPOC', github.pr_author)
  message "@#{github.pr_author} is not a contributor yet"
end

# Force tests to be made withing all PRs that changes files
has_app_changes = !git.modified_files.grep(/DangerPOC/).empty?
has_test_changes = !git.modified_files.grep(/DangerPOCTests/).empty?

if has_app_changes && !has_test_changes
  fail "Tests were not updated"
end

# Fail the build based on code coverage
xcov.report(
  project: "DangerPOC.xcodeproj",
  scheme: "DangerPOC",
  minimum_coverage_percentage: 3.0
)

commit_lint.check warn: :all
