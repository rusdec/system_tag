class SystemTag {
  static tag(name) {
    let tag = document.querySelector(`system[data-name="${name}"]`);
    if (tag) return tag.dataset.value;
    return null;
  };
};

document.addEventListener('DOMContentLoaded', () => {
  for(const tag of document.querySelectorAll('system')) {
    SystemTag.__defineGetter__(tag.dataset.name, () => tag.dataset.value);
  };
});
