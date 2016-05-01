/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

/**
 *
 * @author adelessam
 */
@Entity
@Table(name = "super")
public class Super_DataBase {
@Id
@TableGenerator(initialValue = 1,name = "id",allocationSize = 1)
@GeneratedValue(strategy = GenerationType.TABLE,generator = "id")
    private int id;
@Column(name = "name")
    private String name;
@Column(name = "type")
    private String type;
 private String hints;
 private String path;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getHints() {
        return hints;
    }

    public void setHints(String hints) {
        this.hints = hints;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

   
   
}
