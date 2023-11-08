// routes/messages.js
import { Router } from 'express';
import { sendMessage, getMessages } from '../controllers/messageController';

const router = Router();

router.post('/send', sendMessage);
router.get('/:conversationId', getMessages);

export default router;
