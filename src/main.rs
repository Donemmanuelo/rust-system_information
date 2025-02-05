use std::env;
extern crate os_info;
extern crate num_cpus;

fn main() {
   
    let num_cores = num_cpus::get();
    println!("Number of logical cores is: {}", num_cores);
    let current_dir = env::current_dir();
    println!("Current working directory: {:?}", current_dir);
 
   


    let os = os_info::get();
    println!("OS Name: {}",  env::consts::OS);
    println!("OS Version: {}", os.version());
}

