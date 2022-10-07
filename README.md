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
  1. [`qcreate`](#qcreate): Create a job file(cpu/gpu)
  2. [`qme`](#qme): Display the cpu and memery usage of your jobs
     > Notice: If your job is running with **mpi**, it might not work properly.
  3. [`gme`](#gme): Mark your job running on GPU node if the job does not use GPU
     > Notice: Before using the command, please set the variable like `export LAB_GPU_HOST=NAME`. (p.s. `NAME` is the name of your GPU host.)
  4. [`qcount`](#qcount): Count the number of cpu cores and jobs for the user or all users
  5. [`qdelall`](#qdelall): Delete all jobs
  6. [`qd`](#qd): Delete jobs by given two id(start and end)
  7. [`ql`](#ql): List all job id
  8. [`qn`](#qn): Query job name by given a job id
  9.  [`qln`](#qln): List all job id and names
  10. [`ex2f`](#ex2f): Remove the lines by a file

## Example
### `qcreate`
```bash
qcreate
```
> Create a job file(cpu/gpu) step by step
---

### `qme`
```bash
qme
```
> Display the cpu and memery usage of your jobs

```bash
qme USER_NAME
```
> Peek at other user's the cpu and memery usage of jobs
---

### `gme`
```bash
gme
```
> Mark your job running on GPU node if the job does not use GPU
> - Green text: the job uses the GPU indeed.
> - Red Background: the job does not use the GPU.
---

### `qcount`
```bash
qcount
```
> Count the the number of cpu cores and jobs the user uses

```bash
qcount -a
```
> Count the the number of cpu cores and jobs "all" user use separately
---

### `qdelall`
```bash
qdelall
```
> delete your all jobs
---

### `qd`
```bash
qd 10 100
```
> delete your jobs by given job id from 10 to 100
---
### `ql`
```bash
ql
```
> list your all job id
---

### `qn`
```bash
qn 100
```
> query your job name by given job id 100
---

### `qln`
```bash
qln
```
> List all job id and names
---

### `ex2f`

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