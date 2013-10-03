# -*- coding: utf-8 -*-
#
# Woo documentation build configuration file, created by
# sphinx-quickstart on Sat Jun 16 15:52:22 2012.
#
# This file is execfile()d with the current directory set to its containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys, os, re

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.insert(0, os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be extensions
# coming with Sphinx (named 'sphinx.ext.*') or your custom ones.

try:
	import IPython.docs.extensions.ipython_directive # this is wrong, fix it at some point
	ext_ipython_directive='FQDN_of_ipython-directive' 
except ImportError:
	# use local copy
	ext_ipython_directive='ipython_directive'

try:
	import cloud_sptheme
except ImportError:
	raise ImportError("Sphinx cloud theme is not importable; install it using 'easy_install cloud_sptheme'.")

try:
	import sphinxcontrib.bibtex
except ImportError:
	raise ImportError("BibTeX support for sphinx not found; install it using 'easy_install sphinxcontrib-bibtex'")

try:
	import sphinxcontrib.newsfeed
except ImportError:
	raise ImportError("Disqus support for sphinx not found; install it using 'easy_install sphinxcontrib-newsfeed'")


extensions = ['sphinx.ext.autodoc', 'sphinx.ext.doctest', 'sphinx.ext.mathjax', 'sphinx.ext.viewcode', 'matplotlib.sphinxext.plot_directive', 'sphinx.ext.inheritance_diagram', 'sphinx.ext.intersphinx', 'sphinx.ext.todo', 'sphinx.ext.extlinks', 'sphinxcontrib.bibtex','sphinxcontrib.newsfeed',
	# local copies
	'sphinxcontrib_youtube',
	'tikz',
	ext_ipython_directive,
]

# customize prompts
ipython_rgxin =re.compile('Woo \[(\d+)\]:\s?(.*)\s*')
ipython_rgxout=re.compile(' -> \[(\d+)\]:\s?(.*)\s*')
ipython_promptin ='Woo [%d]:'
ipython_promptout=' -> [%d]:'

# make graphviz determine the best size instead of hard-coded one
# http://stackoverflow.com/a/2151808/761090
inheritance_graph_attrs = dict(size='""')

todo_include_todos=True

tikz_latex_preamble=r'\usepackage{pgfplots}'
tikz_tikzlibraries=''

# show discussion form at the bottom of every page
disqus_shortname='woodem'
rst_epilog='.. disqus::\n\n'

extlinks={'woosrc':('http://bazaar.launchpad.net/~eudoxos/woo/trunk/view/head:/%s','source file ')}

## customize mathjax
## hack from https://bitbucket.org/birkenfeld/sphinx/issue/969/allow-mathjax-customization-via-localjs 
mathjax_path = 'MathJax_local.js' # file including MathJax from CDN plus local config, in _static

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix of source filenames.
source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8-sig'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = u'Woo'
copyright = u'2012, Václav Šmilauer <eu@doxos.eu>'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = '0.99'
# The full version, including alpha/beta/rc tags.

from bzrlib.branch import BzrBranch
revno=str(BzrBranch.open_containing('../../..')[0].last_revision_info()[0])
release = 'rev'+revno

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#language = English

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
#today = ''
# Else, today_fmt is used as the format for a strftime call.
#today_fmt = '%B %d, %Y'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
exclude_patterns = ['**/wooExtra']

# The reST default role (used for this markup: `text`) to use for all documents.
#default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
#add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
#add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
#show_authors = False

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# A list of ignored prefixes for module index sorting.
modindex_common_prefix = ['woo.']


# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
if 0:
	html_theme = 'pyramid'
else:
	import cloud_sptheme
	html_theme='cloud'
	html_theme_path=[cloud_sptheme.get_theme_dir()]
	html_theme_options={'roottarget':'index'}

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#html_theme_options = {}

# Add any paths that contain custom themes here, relative to this directory.
#html_theme_path = []

# The name for this set of Sphinx documents.  If None, it defaults to
# "<project> v<release> documentation".
#html_title = None

# A shorter title for the navigation bar.  Default is the same as html_title.
#html_short_title = None

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
#html_logo = None

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
html_favicon = 'woo-favicon.ico'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
#html_last_updated_fmt = '%b %d, %Y'

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
#html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
#html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

# If false, no module index is generated.
#html_domain_indices = True

# If false, no index is generated.
#html_use_index = True

# If true, the index is split into individual pages for each letter.
#html_split_index = False

# If true, links to the reST sources are added to the pages.
#html_show_sourcelink = True

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
#html_show_sphinx = True

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
#html_show_copyright = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
#html_use_opensearch = ''

# This is the file name suffix for HTML files (e.g. ".xhtml").
#html_file_suffix = None

# Output file base name for HTML help builder.
htmlhelp_basename = 'Woodoc'


# -- Options for LaTeX output --------------------------------------------------

latex_elements = {
# The paper size ('letterpaper' or 'a4paper').
#'papersize': 'letterpaper',

# The font size ('10pt', '11pt' or '12pt').
#'pointsize': '10pt',

# Additional stuff for the LaTeX preamble.
'preamble': '\usepackage{tikz,pgfplots}',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
  ('index', 'Woo.tex', u'Woo Documentation',
   u'Václav Šmilauer', 'manual'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = None

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# If true, show page references after internal links.
#latex_show_pagerefs = False

# If true, show URL addresses after external links.
#latex_show_urls = False

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_domain_indices = True


# -- Options for manual page output --------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    ('index', 'woo', u'Woo Documentation',
     [u'Václav Šmilauer'], 1)
]

# If true, show URL addresses after external links.
#man_show_urls = False


# -- Options for Texinfo output ------------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
  ('index', 'Woo', u'Woo Documentation',
   u'Václav Šmilauer', 'Woo', 'One line description of project.',
   'Miscellaneous'),
]

# Documents to append as an appendix to all manuals.
#texinfo_appendices = []

# If false, no module index is generated.
#texinfo_domain_indices = True

# How to display URL addresses: 'footnote', 'no', or 'inline'.
#texinfo_show_urls = 'footnote'

graphviz_output_format='png'
