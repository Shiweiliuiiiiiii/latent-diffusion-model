import torch

generator = torch.Generator()
generator.manual_seed(0)
print(torch.rand((5,5), generator=generator) < 0.2)