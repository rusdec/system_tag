class SystemTag {}
if (document.querySelectorAll('system').length > 0) {
  for(const tag of document.querySelectorAll('system')) {
    Object.defineProperty(SystemTag, tag.dataset.name, { value: tag.dataset.value });
  };
};
