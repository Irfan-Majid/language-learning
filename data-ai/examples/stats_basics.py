"""Basic statistics with NumPy."""
import numpy as np

def main():
    sales = [120, 135, 128, 142, 155, 148, 160, 138, 145, 152]

    print("Sales data:", sales)
    print(f"Mean:   {np.mean(sales):.1f}")
    print(f"Median: {np.median(sales):.1f}")
    print(f"Std:    {np.std(sales):.1f}")
    print(f"Min:    {np.min(sales)}")
    print(f"Max:    {np.max(sales)}")

    # Simple growth
    growth = (sales[-1] - sales[0]) / sales[0] * 100
    print(f"Growth (first to last): {growth:.1f}%")

if __name__ == "__main__":
    main()
