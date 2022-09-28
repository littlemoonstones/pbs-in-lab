#PBS -l select=1:ncpus=22:mpiprocs=22:ompthreads=22
#PBS -q workq
#PBS -j oe
#PBS -N hhh

export PYTHONPATH=$PYTHONPATH:/home/littlemoonstones/scripts
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/littlemoonstones/anaconda3/lib/
source ~/.bashrc
cd /home/littlemoonstones/scripts
conda activate rl

echo "=========================================================="
echo "Starting on : $(date)"
echo "Running on node : $(hostname)"
echo "file directory : $(pwd)"
echo "file job ID : $PBS_JOBID"
echo "=========================================================="
## write donw your command...

echo "Job Ended at $(date)"
echo "======================================================="

conda deactivate
