"""First ML model - Iris classification."""
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report

def main():
    X, y = load_iris(return_X_y=True)
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42
    )

    model = RandomForestClassifier(n_estimators=100, random_state=42)
    model.fit(X_train, y_train)
    preds = model.predict(X_test)

    print(f"Accuracy: {accuracy_score(y_test, preds):.2%}")
    print("\nClassification Report:")
    print(classification_report(y_test, preds, target_names=load_iris().target_names))

if __name__ == "__main__":
    main()
