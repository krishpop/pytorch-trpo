for GAMMA in 0.99 0.995
do
    for TAU in 0.97 0.99
    do
        for BATCHSIZE in 512 1024
        do
            python main.py --gamma $GAMMA --tau $TAU --batch-size $BATCHSIZE --env-name 'peg1-v0' &> g-$GAMMA-t-$TAU-bs-$BATCHSIZE.out &
            sleep 10
        done
    done
done
