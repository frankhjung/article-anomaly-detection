# Anomaly Detection

Anomalies are patterns in data that do not conform to a well-defined notion of
normal behavior.

Techniques used to detect anomalies typically require training before being
applied to new data.

This Jupyter notebook reproduces the results from Oana Niculaescu's XRDS
article: [Applying Data Science for Anomaly and Change Point
Detection](http://xrds.acm.org/article.cfm?aid=3265925) (a local copy is
[here](/home/frank/documents/articles/anomaly-detection/anomaly-detection.ipynb)).

## Features

- Statistical anomaly detection methods
- Change point detection algorithms
- Data visualization with matplotlib
- Reproducible analysis with Jupyter notebooks

## Prerequisites

This project uses [uv](https://docs.astral.sh/uv/) for Python package
management.

Install uv:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Setup

Create a virtual environment and install dependencies:

```bash
uv sync
```

Activate the virtual environment:

```bash
source .venv/bin/activate  # On Linux/macOS
# or
.venv\Scripts\activate  # On Windows
```

## Usage

### Running the Notebook

Start Jupyter notebook:

```bash
uv run jupyter notebook
```

Or use Jupyter Lab for a modern interface:

```bash
uv run jupyter lab
```

Then open [anomaly-detection.ipynb](anomaly-detection.ipynb) in the browser.

### Exporting Results

Export the notebook to HTML:

```bash
uv run jupyter nbconvert --execute --to html anomaly-detection.ipynb
```

Export to PDF (requires LaTeX):

```bash
uv run jupyter nbconvert --execute --to pdf anomaly-detection.ipynb
```

Export to LaTeX:

```bash
uv run jupyter nbconvert --execute --to latex anomaly-detection.ipynb
```

## Resources

- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/)
- [nbconvert Documentation](https://nbconvert.readthedocs.io/)
- [uv Package Manager](https://docs.astral.sh/uv/)
- [Original XRDS Article](http://xrds.acm.org/article.cfm?aid=3265925)

## License

See [LICENSE](LICENSE) for details.
