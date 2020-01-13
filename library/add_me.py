#!/usr/bin/python

from ansible.module_utils.basic import *

def main():

    input_data = {
                  "inet_eth0": {"required": True, "type": "str"}
                  }

    module = AnsibleModule(argument_spec=input_data)

    do_smth = module.params["inet_eth0"].split()
    ip = do_smth[1]
    mask = do_smth[3]

    module.exit_json(changed=False, meta={"ip": ip, "mask": mask})

if __name__ == '__main__':
    main()
