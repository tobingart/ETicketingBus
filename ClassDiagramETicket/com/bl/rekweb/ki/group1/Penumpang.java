package com.bl.rekweb.ki.group1;

import java.util.Date;

/**
 * Created by xxx on 4/12/2016.
 */
public class Penumpang {
    public String id_penumpang;
    public String pass;
    private String nama_penumpang;
    private Date ttl;
    private boolean isJenkel;
    private String alamat;
    public void Login(){
        System.out.println("Halo, " + nama_penumpang);
    }

}
