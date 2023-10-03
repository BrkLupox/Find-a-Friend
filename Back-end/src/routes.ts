import { Router } from 'express';

import { CreateUserController } from './controllers/user/CreateUserController'

const router = Router();

router.post('/user', new CreateUserController().handle)

export {router};