<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 18.05.2018
 * Time: 18:59
 */

class MessagesNeeded extends Request
{
    protected $limit = 1;
    protected $direction_sorting = 'DESC'; //DESC
    protected $value_sorting = 'added';
    protected $select_sorting = array(
        'username' => '',
        'email'=> '',
        'category'=> '',
        'added'=> '',
    );
    protected $select_direction = array(
        'DESC'=> '',
        'ASC'=> '',
    );
    protected $arr_sorting = array(
        'username',
        'email',
        'category',
        'added',
    );

    public function get_params()
    {
        if ($this->get('sorting') &&
            in_array($this->get('sorting'), $this->arr_sorting)) {
            $this->value_sorting = $this->get('sorting');
            $this->select_sorting[$this->get('sorting')] ='selected';
        }
        if ($this->get('direction') == 'ASC' || $this->get('direction') == 'DESC') {
            $this->direction_sorting = $this->get('direction');
            $this->select_direction[$this->get('direction')] ='selected';
        }
        if ($this->get('page') && intval($this->get('page')) > 1) {
            $this->limit = $this->get('page');
        }
    }

    /**
     * @return int
     */
    public function getLimit()
    {
        return $this->limit;
    }

    /**
     * @return string
     */
    public function getDirectionSorting()
    {
        return $this->direction_sorting;
    }

    /**
     * @return string
     */
    public function getValueSorting()
    {
        return $this->value_sorting;
    }

    /**
     * @return array
     */
    public function getSelectSorting($sorting)
    {
        return $this->select_sorting[$sorting];
    }

    /**
     * @return array
     */
    public function getSelectDirection($direction)
    {
        return $this->select_direction[$direction];
    }

}