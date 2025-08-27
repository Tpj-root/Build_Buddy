Short answer: **there’s no official “draw by script” API in SolveSpace’s GUI**, but you have 3 workable 2D options:

1. **Generate a `.slvs` file yourself**
   The file format is text. Many users script simple lines/arcs/constraints and then open/export from SolveSpace (or via CLI). ([solvespace.com][1])

2. **Use the Python bindings (solver-level, low-level)**

   * `python-solvespace` / PySLVS lets you create points/lines and constraints programmatically, then solve and export. Good for 2D parametrics, but you’ll assemble geometry yourself.
     Install: `pip install python-solvespace`
     Minimal sketch idea (pseudo-Python):

   ```python
   from python_solvespace import SolverSystem
   ss = SolverSystem()
   p1 = ss.add_point(0, 0); p2 = ss.add_point(50, 0)
   l  = ss.add_line(p1, p2)
   ss.add_distance(p1, p2, 50)  # constrain length
   ss.solve()
   # then write out to DXF/SVG via your own exporter or save as .slvs structure
   ```

   ([pyslvs-ui.readthedocs.io][2], [GitHub][3], [PyPI][4])

3. **Automate exports with the CLI**
   Once you have a `.slvs`, export 2D via:
   `solvespace-cli export-view --view top --output part.svg model.slvs` (also DXF/PDF). ([Debian Manpages][5], [solvespace.com][6])

If you need heavy scripting (GUI objects, higher-level API), **FreeCAD’s Python API** is more mature; use SolveSpace when you’re okay generating `.slvs` or using the solver bindings. ([GitHub][7])

[1]: https://solvespace.com/forum.pl?action=viewthread&parent=3321&tt=1608052246&utm_source=chatgpt.com "Forum - SolveSpace"
[2]: https://pyslvs-ui.readthedocs.io/en/stable/python-solvespace-lib/?utm_source=chatgpt.com "Python-Solvespace Library - Pyslvs Documentation"
[3]: https://github.com/realthunder/slvs_py?utm_source=chatgpt.com "realthunder/slvs_py: SolveSpace Python binding package source"
[4]: https://pypi.org/project/py-slvs/?utm_source=chatgpt.com "py-slvs - PyPI"
[5]: https://manpages.debian.org/testing/solvespace/solvespace-cli.1?utm_source=chatgpt.com "solvespace-cli(1) - Debian Manpages"
[6]: https://solvespace.com/forum.pl?action=viewthread&parent=3460&tt=1612035784&utm_source=chatgpt.com "Forum - SolveSpace"
[7]: https://github.com/solvespace/solvespace?utm_source=chatgpt.com "solvespace/solvespace: Parametric 2d/3d CAD - GitHub"
