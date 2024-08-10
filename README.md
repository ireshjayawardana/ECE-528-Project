# ECE528 Project - Neural Network Hardware Implementation

## Project Overview
This project, completed as part of ECE528, involves the hardware implementation of a neural network. The design is divided into three main units:
- Multiplier and Adder Unit (MAC)
- Accumulator Unit (ACC)
- Sigmoid Activation Function Unit (SIG)

## Team Members
- M Iresh Jayawardana 
- Danuka Malinda Lama Hewage 

## Project Milestones
The project consists of three major milestones:

### 1. MAC Design
The MAC unit is composed of 16 8-bit multipliers, with their products summed using cascaded adders. To optimize throughput, three pipeline stages were added:
- Initial design without pipelining
- Design with input flops
- Design with pipelining on both inputs and outputs

Performance improvements:
- Worst negative slack (@100MHz): 2.076ns
- Improved slack with additional pipelining: 5.058ns

#### Simulation
Behavioral and post-synthesis timing simulations were performed to validate the MAC unit. The simulation used data from `digits_hex.txt` and `weights_hex`, showing the initial pipeline latency with "xxxxx" in the first few clock cycles.

### 2. ACC Unit
The ACC unit adds four consecutive values from the MAC unit, utilizing a finite state machine (FSM) implemented in a separate module called `acc_ctrl`.

#### Simulation
The ACC unit was combined with the MAC unit, and simulations were run to ensure correct operation. The dumped data matched the expected results.

### 3. Sigmoid Activation Unit
The sigmoid activation function was added as an IP to the design. Due to a Vivado version mismatch, synthesis was not possible, and only behavioral simulation was performed. Integration required a sigmoid IP wrapper.

#### Simulation
Behavioral simulation results were obtained after integrating all modules, confirming the correct operation of the sigmoid activation unit.

## Design Considerations
The project aimed to balance hardware utilization and performance:
- An accumulator was used to reduce hardware costs by summing results from the multiplier circuitry.
- Pipeline stages were added to the MAC unit to enhance throughput and reduce combinational delay.
- The circuit operates at 100MHz, minimizing harmonic distortions and electromagnetic radiation, reducing health risks and power consumption while meeting timing requirements.

## Repository Structure
![image](https://github.com/user-attachments/assets/b861ff32-4c93-4b13-8b59-1f992735c58c)


## Usage
1. **Clone the repository:**
    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```

2. **Synthesize the design:**
    Open Vivado and run the synthesis scripts for each module.

3. **Run simulations:**
    Use the provided testbenches in the `sim` directory to verify the functionality of each module.

4. **View reports:**
    Refer to the `project_report.pdf` in the `reports` directory for detailed project documentation.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

This README provides a high-level overview of the project and instructions for usage. For detailed technical information, refer to the project report included in the `reports` directory.

Before pushing please run - reset_project

settings -> to avoid synthesis remove module hirachy - settingd-> systhesis -> flatten_hierachy -> none
          -> disable increamental sysnthesis
