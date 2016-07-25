/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package project.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * 
 * @author dejmien
 */
@Entity
@Table(name = "item")
@NamedQueries({ @NamedQuery(name = "Item.findAll", query = "SELECT i FROM Item i") })
public class Item implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "Id_Item")
	private Integer idItem;

	@Basic(optional = false)
	@Column(name = "name")
	private String name;

	@Basic(optional = true)
	@Column(name = "description")
	private String description;

	public Integer getIdItem() {
		return idItem;
	}

	public void setIdItem(Integer idItem) {
		this.idItem = idItem;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "damiancyk.spring.form.Item[ idItem=" + idItem + " ]";
	}

}
