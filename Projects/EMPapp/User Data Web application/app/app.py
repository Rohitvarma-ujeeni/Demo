from flask import Flask, request, render_template_string
import mysql.connector

app = Flask("Employee_details")

form_html = '''
    <h2>Employee Info Form</h2>
    <form method="POST">
        EMP ID: <input name="EMP ID"><br>
        Name: <input name="name"><br>
        Email: <input name="email"><br>
        <input type="Submit">
    </form>
'''

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        emp = request.form['empid']
        name = request.form['name']
        email = request.form['email']

        db = mysql.connector.connect(
            host="db", user="rohit", password="rohit@1123", database="people_db"
        )
        cursor = db.cursor()
        cursor.execute("INSERT INTO people (empid,name, email) VALUES (%s, %s, %s)", (emp, name, email))
        db.commit()
        cursor.close()
        db.close()
        return "Form Submited!"

    return render_template_string(form_html)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
