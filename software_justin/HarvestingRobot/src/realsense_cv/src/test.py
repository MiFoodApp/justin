from pathlib import Path

print(f'{Path(__file__).parent.resolve()}')
open(f'{Path(__file__).parent.resolve()}/LICENSE')