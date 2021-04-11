# imapsync-docker

Migrate your email boxes with this tool and Docker.

## 1.- Create a plain text fail with this format:
```
mailbox1@domain.tld SOURCEPASSWORD mailbox1@domain.tld DESTINATIONPASSWORD
mailbox2@domain.tld SOURCEPASSWORD mailbox2@domain.tld DESTINATIONPASSWORD
mailbox3@domain.tld SOURCEPASSWORD mailbox3@domain.tld DESTINATIONPASSWORD
mailbox4@domain.tld SOURCEPASSWORD mailbox4@domain.tld DESTINATIONPASSWORD
mailbox5@domain.tld SOURCEPASSWORD mailbox5@domain.tld DESTINATIONPASSWORD
```
## 2.- Run following command on your Terminal emulator:
```bash
./imap-sync-copy.sh "SOURCEMAILSERVER" "DESTINATIONMAILSERVER” “mailboxes.list”
```
