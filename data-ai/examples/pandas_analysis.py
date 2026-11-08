"""pandas data analysis example."""
import pandas as pd

def main():
    df = pd.DataFrame({
        "month": ["Jan", "Feb", "Mar", "Apr", "May"],
        "sales": [12000, 15000, 13500, 18000, 16500],
        "region": ["North", "South", "North", "South", "North"],
    })

    print("=== Raw Data ===")
    print(df)

    print("\n=== Total Sales ===")
    print(f"${df['sales'].sum():,}")

    print("\n=== Sales by Region ===")
    print(df.groupby("region")["sales"].agg(["sum", "mean", "count"]))

    print("\n=== Best Month ===")
    best = df.loc[df["sales"].idxmax()]
    print(f"{best['month']}: ${best['sales']:,}")

if __name__ == "__main__":
    main()
