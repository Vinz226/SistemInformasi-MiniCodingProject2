<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Karyawan;

class KaryawanController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Karyawan';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Karyawan());

        $grid->column('ID', __('ID'));
        $grid->column('Nama', __('Nama'));
        $grid->column('Pangkat', __('Pangkat'));
        $grid->column('Telepon', __('Telepon'));
        $grid->column('Email', __('Email'));
        $grid->column('Foto') -> image();
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Karyawan::findOrFail($id));

        $show->field('ID', __('ID'));
        $show->field('Nama', __('Nama'));
        $show->field('Pangkat', __('Pangkat'));
        $show->field('Telepon', __('Telepon'));
        $show->field('Email', __('Email'));
        $show->field('Foto', __('Foto'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Karyawan());

        $form->text('Nama', __('Nama'));
        $form->text('Pangkat', __('Pangkat'));
        $form->text('Telepon', __('Telepon'));
        $form->email('Email', __('Email'));
        $form->image('Foto', __('Foto'));

        return $form;
    }

}
