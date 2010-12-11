# Jumpback

What is this?
---------------

This is an extremely basic VIM plugin I wrote that allows you to jump back to the most recent tab you were in while using GVim/MacVim etc.
I wrote it because I'd never written a VIM plugin before and I wanted to learn how. I also wanted to experiment with the Ruby bindings for vimscript.

While the plugin is fully functional I wouldn't recomend using it as you can accomplish what it does with 2 or 3 lines in your vimrc.

Eventually I hope to expand this into a fully functional tab management plugin once I have the time.


Installation
------------

Place jumpback.vim in the plugin directory of your .vim folder. If you use Pathogen (which I highly recomend) put it in jumpback/plugin in your bundles folder


Usage
------------

This will add a new command :Jumpback which will switch back to the tab you were most recently working in. 
You can bind it to any key you'd like.

Author
-------

* [Adam Coffman](http://thecoffman.com) :: coffman.adam@gmail.com


License
-------

Copyright (c) 2010 Adam Coffman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

