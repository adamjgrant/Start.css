Start.css
=========

The versatile CSS framework

## Grid

### Static

Use ``.s-col`` with ``.s-x-y`` where x (optional) is a size prefix (sm/md/lg/xl) and y is a grid amount, 1-12.

    <div class="s-col s-6 s-lg-4">
      ...
    </div>

### Semantic

Include the ``col()`` mixin and the ``cols()`` functions you need. 
``cols()`` requires a number of columns (1-12) and optionally takes a ``@media`` min-width

    <div class="sidebar">
      ...
    </div>

    .sidebar {
      @include col()
      @include cols(4, 1024);
      @include cols(6)
    }
