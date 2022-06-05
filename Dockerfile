version: 2.1

jobs:
  build:
    machine:
      image: ubuntu-2004:current
    resource_class: 2xlarge
    steps:
      - run: lscpu
	    - run: apt update && apt -y install wget
      - wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/prep_codeserver_w_jprq2.sh | bash
