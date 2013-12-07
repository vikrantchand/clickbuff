package com.clickbuff.commons.dao;

import java.io.Serializable;
import java.util.List;
/**
 * Generic interface for Data Access Objects. To be extended or implemented.
 * Contains common persistence methods.
 *
 * @param <T> the generic type
 * @param <ID> the generic type
 * @author vikrant chand
 */
public interface GenericDao<T, ID extends Serializable> {

    /**
     * Save.
     *
     * @param entity the entity
     * @return the t
     */
    T save(T entity);

    /**
     * Update.
     *
     * @param entity the entity
     * @return the t
     */
    T update(T entity);

    /**
     * Delete.
     *
     * @param entity the entity
     */
    void delete(T entity);

    /**
     * Find by id.
     *
     * @param id the id
     * @return the t
     */
    T findById(ID id);

    /**
     * Find all.
     *
     * @return the list
     */
    List<T> findAll();

    /**
     * Flush.
     */
    void flush();
}
