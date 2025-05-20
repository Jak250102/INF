<?php
// Datei: complex_calculator.php
// Webbasierter Taschenrechner für komplexe Zahlen

class Complex {
    public float $re;
    public float $im;

    public function __construct(float $re = 0.0, float $im = 0.0) {
        $this->re = $re;
        $this->im = $im;
    }

    public function __toString(): string {
        $sign = $this->im >= 0 ? '+' : '-';
        return sprintf("%.4f %s %.4fi", $this->re, $sign, abs($this->im));
    }

    public function toExponential(bool $inDegrees = true): string {
        $r = sqrt($this->re**2 + $this->im**2);
        $phi = atan2($this->im, $this->re);
        if ($inDegrees) {
            $phi = rad2deg($phi);
            return sprintf("%.4f·e^{i%.2f°}", $r, $phi);
        }
        return sprintf("%.4f·e^{i%.4frad}", $r, $phi);
    }

    public function add(self $z): self { return new self($this->re + $z->re, $this->im + $z->im); }
    public function sub(self $z): self { return new self($this->re - $z->re, $this->im - $z->im); }
    public function mul(self $z): self {
        $re = $this->re * $z->re - $this->im * $z->im;
        $im = $this->re * $z->im + $this->im * $z->re;
        return new self($re, $im);
    }
    public function div(self $z): self {
        $den = $z->re**2 + $z->im**2;
        if ($den == 0) {
            throw new \DivisionByZeroError("Division durch Null");
        }
        $re = ($this->re * $z->re + $this->im * $z->im) / $den;
        $im = ($this->im * $z->re - $this->re * $z->im) / $den;
        return new self($re, $im);
    }
}

// Auswertung
$result = null;
$error  = null;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $re1    = (float)($_POST['re1'] ?? 0);
        $im1    = (float)($_POST['im1'] ?? 0);
        $re2    = (float)($_POST['re2'] ?? 0);
        $im2    = (float)($_POST['im2'] ?? 0);
        $op     = $_POST['op'] ?? '+';
        $format = $_POST['format'] ?? 'rect';

        $z1 = new Complex($re1, $im1);
        $z2 = new Complex($re2, $im2);

        switch ($op) {
            case '+': $res = $z1->add($z2); break;
            case '-': $res = $z1->sub($z2); break;
            case '*': $res = $z1->mul($z2); break;
            case '/': $res = $z1->div($z2); break;
            default: throw new \InvalidArgumentException("Unbekannte Operation");
        }

        $result = ($format === 'exp') ? $res->toExponential() : (string)$res;
    } catch (\Throwable $e) {
        $error = $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Komplexer Taschenrechner</title>
    <style>
        body { font-family: sans-serif; max-width: 450px; margin: 2em auto; }
        label { display: block; margin: 0.5em 0; }
        input, select { width: 100%; padding: 0.4em; }
        .result { margin-top: 1em; padding: 0.8em; background: #f0f0f0; }
        .error  { margin-top: 1em; padding: 0.8em; background: #fdd; }
    </style>
</head>
<body>
<h1>Komplexer Taschenrechner</h1>
<form method="post">
    <label>Re(z₁): <input type="number" step="any" name="re1" required value="<?= htmlspecialchars($_POST['re1'] ?? '') ?>"></label>
    <label>Im(z₁): <input type="number" step="any" name="im1" required value="<?= htmlspecialchars($_POST['im1'] ?? '') ?>"></label>

    <label>Operation:
        <select name="op">
            <option value="+" <?= ($_POST['op'] ?? '') === '+' ? 'selected' : '' ?>>+</option>
            <option value="-" <?= ($_POST['op'] ?? '') === '-' ? 'selected' : '' ?>>−</option>
            <option value="*" <?= ($_POST['op'] ?? '') === '*' ? 'selected' : '' ?>>×</option>
            <option value="/" <?= ($_POST['op'] ?? '') === '/' ? 'selected' : '' ?>>÷</option>
        </select>
    </label>

    <label>Re(z₂): <input type="number" step="any" name="re2" required value="<?= htmlspecialchars($_POST['re2'] ?? '') ?>"></label>
    <label>Im(z₂): <input type="number" step="any" name="im2" required value="<?= htmlspecialchars($_POST['im2'] ?? '') ?>"></label>

    <label>Darstellung:
        <input type="radio" name="format" value="rect" <?= ($_POST['format'] ?? '') !== 'exp' ? 'checked' : '' ?>> Algebraisch
        <input type="radio" name="format" value="exp" <?= ($_POST['format'] ?? '') === 'exp' ? 'checked' : '' ?>> Exponential
    </label>

    <button type="submit">Berechnen</button>
</form>

<?php if ($result): ?>
    <div class="result">
        <strong>Ergebnis:</strong> <?= $result ?>
    </div>
<?php elseif ($error): ?>
    <div class="error">
        <strong>Fehler:</strong> <?= htmlspecialchars($error) ?>
    </div>
<?php endif; ?>

</body>
</html>
