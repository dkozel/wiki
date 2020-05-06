Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
     credentials = Rugged::Credentials::SshKeyFromAgent.new(username: 'git')
     committer.wiki.repo.git.pull('origin', committer.wiki.ref, credentials: credentials)
     committer.wiki.repo.git.push('origin', committer.wiki.ref, credentials: credentials)
end
