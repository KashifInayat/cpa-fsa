# CPA-F Gemmini

This repo contains the verilog code of signed 8-bit multiplier and 8x8 Gemmini accelerator with 16,32 and 64 bit accmulator with TCL and Shell files of synopsys tools. This work published at MDPI Electronics Journal and entitled:

- Carry-Propagation-Adder-Factored Gemmini Systolic Array for Machine Learning Acceleration (https://www.mdpi.com/2079-9292/10/6/652/htm)

## Prerequisites:
To use these files, you must have synopsys tools:  VCS, DC, PrimeTime PX, PrimePower

## PEs usage:
- Before proceeding to PEs design, you need to copy the right multiplier into  
```bash
./designs/mult.ddc
```
Next you need to synthesize the Processing Element

- For DC
```bash
./run_dc.sh
```

## Gemmini SA usage:
Use the following commands to get the corresponding tool:

- Before proceeding to SA, you need to copy the right netlist of PE into 

```bash
./designs/PE.ddc
```

- For DC
```bash
./run_dc.sh  
```
- For Baremetal Test
```bash
- ./make.sh
- ./simv ./matmul_os-baremetal 
```


## Citation:
If you find CPA-F Gemmini useful in your research, please consider citing:
```
@article{inayat2021carry,
  title={Carry-Propagation-Adder-Factored Gemmini Systolic Array for Machine Learning Acceleration},
  author={Inayat, Kashif and Chung, Jaeyong},
  journal={Electronics},
  volume={10},
  number={6},
  pages={652},
  year={2021},
  publisher={Multidisciplinary Digital Publishing Institute}
}
```

## Contributing:
- Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

- Please make sure you have valid license to proceed with the synopsys tools.
