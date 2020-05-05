

https://www.brendanlong.com/systemd-user-services-are-amazing.html

~/.config/systemd/user/gollum.service
``` 
[Service]                                                                                                                                                                              
WorkingDirectory=/home/dkozel/src/wiki
ExecStart=/usr/local/bin/gollum -p 8042 -c /home/dkozel/src/wiki/gollum_config.rb 
```

```
systemctl --user enable gollum
systemctl --user start gollum
systemctl --user daemon-reload
```

gollum_config.rb
```
Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
     credentials = Rugged::Credentials::SshKeyFromAgent.new(username: 'git')
     committer.wiki.repo.git.pull('origin', committer.wiki.ref, credentials: credentials)
     committer.wiki.repo.git.push('origin', committer.wiki.ref, credentials: credentials)                                                                                              
end
```