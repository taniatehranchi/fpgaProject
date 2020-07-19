/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inputfilecreation;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author HP
 */
public class InputFileCreation {

    /**
     * @param args the command line arguments
     */
    public static final String a = "E:\\term 6\\FPGA\\project\\inputFile.txt";
    public static void main(String[] args) {
        String[] line = new String[8];
        String[][] elements;
        int number;
        try (BufferedReader in = new BufferedReader(new FileReader("E:\\term 6\\FPGA\\project\\matrix.txt"))) {
            int counter = 0;
            while (counter < 8) {
                line[counter] = in.readLine();
                if (line[counter] != null) {
                    System.out.println(line[counter]);
                    if (counter == 7) {
                        number = line[counter].split("\t").length;
                        elements = new String[8][number];
                        for(int m=0;m<8;m++){
                            elements[m]=line[m].split("\t");
                        }
                        createBlocks(elements,number);
                        counter=0;
                    }
                    else
                        counter++;
                }
                else
                    break;
            }
        } catch (IOException e) {
            System.out.println("Cant Read");
        }
    }

    private static void createBlocks(String[][] line,int number) {
        BufferedWriter bw = null;
        FileWriter fw = null;

        try {
            
            fw = new FileWriter(a, true);
            bw = new BufferedWriter(fw);
            int counter = 0;
            int i = 0;
            while ((number - i) > 7) {
                for (int j = 0; j < 8; j++) {
                    for (int k = 0; k < 8; k++) {
                        bw.write(String.valueOf(line[j][i + k])+"\n");
                        System.out.println(line[j][i + k]);
                    }
                }
                i += 8;
            }
            System.out.println("Done");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bw != null) {
                    bw.close();
                }
                if (fw != null) {
                    fw.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }

    }

}
