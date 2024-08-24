trigger updateContactOfAccount on Account (after insert) {
          updateContactOnAccount.contactUpdate(trigger.new);
}