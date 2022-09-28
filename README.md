# PBS in Lab
## Install
```bash
git clone https://github.com/littlemoonstones/pbs-in-lab.git
cd pbs-in-lab
chmod +x install.sh && ./install.sh
cd ~ && source .bashrc
```

## Update
Go to the `pbs-in-lab` folder:
```bash
git pull $ ./install.sh
```

## Usage
There are 5 commands:
  1. `qda`: Delete all jobs
  2. `qd`: Delete jobs by given two id(start and end)
  3. `ql`: List all job id
  4. `qn`: Query job name by given a job id
  5.  `qln`: List all job id and names

## Example
`qda`
```bash
qda
```
> delete your all jobs
---

`qd`
```bash
qd 10 100
```
> delete your jobs by given job id from 10 to 100
---
`ql`
```bash
ql
```
> list your all job id
---

`qn`
```bash
qn 100
```
> query your job name by given job id 100
---

`qln`
```bash
qln
```
> List all job id and names
---