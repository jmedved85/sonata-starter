<?php

declare(strict_types=1);

namespace App\Controller;

use App\Entity\User;
use Sonata\AdminBundle\Controller\CRUDController;

/**
 * @phpstan-extends CRUDController<User>
 */
final class UserAdminController extends CRUDController
{
}
