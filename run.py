from flask import Flask, render_template

app = Flask(__name__, static_folder='templates', template_folder='templates')

@app.route('/')
def index():
    student_info = {
        'name': 'Juan Perez',
        'university': 'Universidad Nacional',
        'faculty': 'Facultad de Ciencias',
        'course': 'Ingeniería Informática'
    }
    return render_template('index.html', info=student_info)

if __name__ == '__main__':
    app.run(debug=True)
