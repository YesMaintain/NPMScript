#!/bin/bash

Action=(
	"actions-rs/toolchain"
	"actions/checkout"
	"actions/setup-node"
	"dependabot/fetch-metadata"
	"github/codeql-action"
	"pnpm/action-setup"
	"pozil/auto-assign-issue"
)

for Action in "${Action[@]}"; do
	readarray -t Tag < <(gh api repos/"$Action"/tags | jq -r .[].name)

	for Tag in "${Tag[@]}"; do
		echo "$Action@$Tag"
	done
done