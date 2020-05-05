Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
     committer.wiki.repo.git.pull('origin', committer.wiki.ref)
     committer.wiki.repo.git.push('origin', committer.wiki.ref)
end
