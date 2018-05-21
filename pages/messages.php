<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 18.05.2018
 * Time: 19:32
 */
$BD = new BD();
$MessagesNeeded = new MessagesNeeded();
$MessagesNeeded->get_params();
$n = $MessagesNeeded->getLimit() + 1;
$p = $MessagesNeeded->getLimit() - 1;
$next_page = '<li><a href="?page=' . $n . '&
sorting=' . $MessagesNeeded->getValueSorting() . '&direction=' . $MessagesNeeded->getDirectionSorting() . '">Следующая</a></li>';
$previous_page = '<li><a href="?page=' . $p . '&
sorting=' . $MessagesNeeded->getValueSorting() . '&direction=' . $MessagesNeeded->getDirectionSorting() . '">Предыдущая</a></li>';
$all_mes_q = $BD->numRows($BD->query("SELECT * FROM messages"));
$oreder = 'ORDER BY ' . $MessagesNeeded->getValueSorting() . ' ' . $MessagesNeeded->getDirectionSorting();
$messages_arr = $BD->getAll("SELECT * FROM messages $oreder LIMIT ?i,?i", ($MessagesNeeded->getLimit() - 1) * 25,
    $MessagesNeeded->getLimit() * 25);
if ($MessagesNeeded->getLimit() - 1 == 0) {
    $previous_page = '';
}
if ($all_mes_q < (($p + 1) * 25)) {
    $next_page = '';
}
?>
<div class="row">
    <form class="form-inline col-sm-offset-2" role="form">
        <div class="form-group">Сортировать по:</div>
        <div class="form-group">
            <select name="direction" id="direction" class="form-control">
                <option <?php echo $MessagesNeeded->getSelectDirection('DESC') ?> value="DESC">Убыванию</option>
                <option <?php echo $MessagesNeeded->getSelectDirection('ASC') ?> value="ASC">Возрастанию</option>
            </select>
        </div>
        <div class="form-group">
            <select name="sorting" id="sorting" class="form-control">
                <option <?php echo $MessagesNeeded->getSelectSorting('added') ?> value="added">Дате добавления</option>
                <option <?php echo $MessagesNeeded->getSelectSorting('username') ?> value="username">Логину</option>
                <option <?php echo $MessagesNeeded->getSelectSorting('email') ?> value="email">Email</option>
                <option <?php echo $MessagesNeeded->getSelectSorting('category') ?> value="category">Категории</option>

            </select>
        </div>
        <button type="submit" class="btn btn-default">Войти</button>
    </form>
</div>
<div class="row">
    <table class="table">
        <tr>
            <td>Логин</td>
            <td>Категория</td>
            <td>email</td>
            <td>URL</td>
            <td>Сообщение</td>
            <td>Дата</td>
        </tr>
        <?php
        for ($i = 0; $i < count($messages_arr); $i++) {
            extract($messages_arr[$i]);
            ?>
            <tr>
                <td><?php echo $username ?></td>
                <td><?php echo $category ?></td>
                <td><?php echo $email ?></td>
                <td><?php echo $homepage ?></td>
                <td><?php echo $message ?></td>
                <td><?php echo date('d.m.Y', strtotime($added))  ?></td>
            </tr>
            <?php
        }
        ?>
    </table>
</div>
<div class="row">
    <ul class="pager">
        <?php echo $previous_page ?>
        <?php echo $next_page ?>
    </ul>
</div>