import Sortable from 'sortablejs'

export default {
  mounted() {
    let dragged
    const hook = this
    const selector = `#${this.el.id}`

    document.querySelectorAll('.dropzone').forEach(dropzone => {
      new Sortable(dropzone, {
        animation: 0,
        delay: 50,
        delayOnTouchOnly: true,
        group: 'shared',
        draggable: '.draggable',
        ghostClass: 'sortable-ghost',
        onEnd: (event) => {
          hook.pushEventTo(selector, 'dropped', {
            draggedId: event.item.id, // id of the dragged item
            dropzoneId: event.to.id, // id of the drop zone where the drop occured
            draggableIndex: event.newDraggableIndex, // index where the item was dropped (relative to other items in the drop zone)
          });
        }
      });
    })
  }
}