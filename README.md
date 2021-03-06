Start.css
=========

The versatile CSS framework. Start can be used *statically* or *semantically*. 

Static uses requires putting classes into your markup. 

    <div class="s-col s-6"></div>

Semantically requires no special classes are used but sass mixins need to be included in your application's scss.

    <div class="sidebar"></div>
    
    .sidebar {
      @include col();
      @include cols(6);
    }

## Grid

### Static

Use ``.s-col`` with ``.s-x-y`` where x (optional) is a size prefix (sm/md/lg/xl) and y is a grid amount, 1-12.

    <div class="s-col s-6 s-lg-4">
      ...
    </div>

To create empty column space before the element, use ``.s-bump-x-y`` (x and y meaning the same as above.)

    <div class="s-col s-6 s-lg-4 s-bump-6 s-bump-lg-8">
      ...
    </div>

### Semantic

Include the ``col()`` mixin and the ``cols()`` functions you need. 
``cols()`` requires a number of columns (1-12) and optionally takes a ``@media`` min-width

    <div class="sidebar">
      ...
    </div>

    .sidebar {
      @include col();
      
      @include cols(4, 1024);
      @include cols(6);
    }

To create empty column space before the element, use ``bump()``, taking the same parameters as ``cols()``

    <div class="sidebar">
      ...
    </div>

    .sidebar {
      @include col();

      @include cols(4, 1024);
      @include bump(8, 1024);

      @include cols(6); 
      @include bump(6);
    }
