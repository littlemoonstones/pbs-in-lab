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
git pull && ./install.sh
```

## Usage
There are serveral commands:
  1. `qcreate`: Create a job file(cpu/gpu)
  2. `qdelall`: Delete all jobs
  3. `qd`: Delete jobs by given two id(start and end)
  4. `ql`: List all job id
  5. `qn`: Query job name by given a job id
  6.  `qln`: List all job id and names
  7.  `ex2f`: Remove the lines by a file

## Example
`qcreate`
```bash
qcreate
```
> Create a job file(cpu/gpu) step by step
---

`qdelall`
```bash
qdelall
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

`ex2f`

```bash
ex2f -s file_1.txt -e file_2.txt > output.txt
```

#### file_1.txt
```txt
test_101
test_123
test_131
test_362
test_594
```

#### file_2.txt
```txt
test_123
test_362
```

#### output.txt
```txt
test_101
test_131
test_594
```

> - `-s, --source`: source file
> - `-e, --exclusive`: those text in the file you want to exculde
---