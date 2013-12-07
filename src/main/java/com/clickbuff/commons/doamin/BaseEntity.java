/*
 * 
 */
package com.clickbuff.commons.doamin;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

// TODO: Auto-generated Javadoc
/**
 * Base entity type to hold common Id property. To be extended.
 *
 * @author Vikrant Chand
 */
@MappedSuperclass
public class BaseEntity implements Serializable {

    /** The Constant serialVersionUID. */
    private static final long serialVersionUID = 568379222048217476L;
    
    /** The id. */
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="ID")
    private Integer id;

    /**
     * Gets the id.
     *
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * Sets the id.
     *
     * @param id the new id
     */
    public void setId(Integer id) {
        this.id = id;
    }
}
