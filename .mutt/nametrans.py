import re
from subprocess import check_output 

mapping = {'INBOX': 'inbox',
           '[Gmail]/All Mail': 'all_mail',
           '[Gmail]/Bin': 'bin',
           '[Gmail]/Drafts': 'drafts',
           '[Gmail]/Important': 'important',
           '[Gmail]/Sent Mail': 'sent_mail',
           '[Gmail]/Spam': 'spam',
           '[Gmail]/Starred': 'starred',
           'Junk E-mail': 'junk_mail',
           'Notes': 'notes',
           'INBOX.Drafts': 'draft',
           'INBOX.Junk': 'junk',
           'INBOX.Sent': 'sent',
           'INBOX.Trash': 'trashcan'}

r_mapping = {val: key for key, val in mapping.items()}


def nt_remote(folder):
    try:
        return mapping[folder]
    except:
        return re.sub(' ', '_', folder).lower()


def nt_local(folder):
    try:
        return r_mapping[folder]
    except:
        return re.sub('_', ' ', folder).capitalize()


# folderfilter = exclude(['Label', 'Label', ... ])
def exclude(excludes):
    def inner(folder):
        try:
            excludes.index(folder)
            return False
        except:
            return True

    return inner
 
def rise1():
    return check_output("gpg --no-tty -dq /home/wolf/.passwd/8100d1r0n.gpg", shell=True).strip("\n")
def rise2():
    return check_output("gpg --no-tty -dq /home/wolf/.passwd/*********.gpg", shell=True).strip("\n")

