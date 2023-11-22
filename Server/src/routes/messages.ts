// routes/messages.js
import { Router } from 'express';
import { sendMessage, getMessage } from '../controllers/conversationController';

const router = Router();

router.post('/send', sendMessage);
router.get('/:conversationId', getMessage);

export default router;
