
compiles="$(OPAL_PREFIX=$PWD/OpenMPI LD_LIBRARY_PATH=$PWD/OpenMPI/lib:$PWD/Boost/lib OpenMPI/bin/mpic++ --showme:compile)"
links="$(OPAL_PREFIX=$PWD/OpenMPI LD_LIBRARY_PATH=$PWD/OpenMPI/lib:$PWD/Boost/lib OpenMPI/bin/mpic++ --showme:links)"

echo OPAL_PREFIX=$PWD/OpenMPI LD_LIBRARY_PATH=$PWD/OpenMPI/lib:$PWD/Boost/lib \
OpenMPI/bin/mpic++ -std=c++11 $compiles -I$PWD/Boost/include main.cpp \
 $links -L$PWD/Boost/lib -lboost_filesystem  -lboost_serialization -lboost_mpi


OPAL_PREFIX=$PWD/OpenMPI LD_LIBRARY_PATH=$PWD/OpenMPI/lib:$PWD/Boost/lib \
OpenMPI/bin/mpic++ -std=c++11 $compiles -I$PWD/Boost/include main.cpp \
 $links -L$PWD/Boost/lib -lboost_filesystem  -lboost_serialization -lboost_mpi


OPAL_PREFIX=$PWD/OpenMPI LD_LIBRARY_PATH=$PWD/OpenMPI/lib:$PWD/Boost/lib \
OpenMPI/bin/mpirun -np 4 a.out

