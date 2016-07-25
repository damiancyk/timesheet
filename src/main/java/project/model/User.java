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
@Table(name = "users")
@NamedQueries({ @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u") })
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Basic(optional = false)
	@Column(name = "Id_User")
	private Integer idUser;

	@Basic(optional = false)
	@Column(name = "LOGIN")
	private String login;

	@Basic(optional = false)
	@Column(name = "email")
	private String email;

	@Column(name = "firstname")
	private String firstname;

	@Column(name = "lastname")
	private String lastname;

	@Basic(optional = false)
	@Column(name = "PASSWORD")
	private String password;

	@Basic(optional = false)
	@Column(name = "authority")
	private String authority;

	@Basic(optional = false)
	@Column(name = "ENABLED")
	private int enabled;

	public User() {
	}

	public User(Integer idUser) {
		this.idUser = idUser;
	}

	public User(Integer idUser, String login, String password, int enabled) {
		this.idUser = idUser;
		this.login = login;
		this.password = password;
		this.enabled = enabled;
	}

	public Integer getIdUser() {
		return idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (idUser != null ? idUser.hashCode() : 0);
		return hash;
	}

	@Override
	public boolean equals(Object object) {
		if (!(object instanceof User)) {
			return false;
		}
		User other = (User) object;
		if ((this.idUser == null && other.idUser != null)
				|| (this.idUser != null && !this.idUser.equals(other.idUser))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "net.organizer.form.User[ idUser=" + idUser + " ]";
	}

}
