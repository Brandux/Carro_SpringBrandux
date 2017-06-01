/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.interfaces;

import java.util.List;

/**
 *
 * @author Brandukosky
 */
public interface Operaciones <Pojo>{
    public int create(Pojo o);
    public int delete(int id);
    public int update(Pojo o);
    
    public List<Pojo> buscar(int id);
    public List<Pojo> listar();
}
