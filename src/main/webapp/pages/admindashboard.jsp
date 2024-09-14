<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Details Dashboard</title>

        <!-- Bootstrap 5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome for Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="style.css">
    </head>

    <body class="bg-light">
        <div class="container my-5">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="text-primary">User Details</h2>
                <a href="admindashnew" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back</a>
            </div>

            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle text-center shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>District</th>
                            <th>Taluka</th>
                            <th>Village</th>
                            <th>Municipal Corporation</th>
                            <th>Authorized Person</th>
                            <th>Action</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${kk}" var="e">
                            <tr>
                                <td>${e.id}</td>
                                <td>${e.full_name}</td>
                                <td>${e.mobileNumber}</td>
                                <td>${e.email}</td>
                                <td>${e.distric}</td>
                                <td>${e.taluka}</td>
                                <td>${e.village}</td>
                                <td>${e.municipal_corporation}</td>
                                <td>${e.authorized_Person}</td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <a href="/user/{id}" class="btn btn-outline-success btn-sm"
                                            onclick="updateStatus(event, ${e.id}, 'Approved')">
                                            <i class="fas fa-check"></i> Approve
                                        </a>
                                        <a href="#" class="btn btn-outline-danger btn-sm"
                                            onclick="updateStatus(event, ${e.id}, 'Rejected')">
                                            <i class="fas fa-times"></i> Reject
                                        </a>
                                       
                                    </div>
                                </td>
                                <td id="status-${e.id}" class="text-warning">Pending</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Bootstrap 5 JS and dependencies -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

        <script>
            function updateStatus(event, id, status) {
                event.preventDefault();
                document.getElementById("status-" + id).innerText = status;
            }
        </script>

        <style>
            body {
                background: #f8f9fa;
                color: #343a40;
            }

            h2 {
                font-weight: bold;
            }

            .table th,
            .table td {
                vertical-align: middle;
            }

            .btn-group .btn {
                margin: 0 2px;
            }

            .table-responsive {
                border-radius: 0.5rem;
                overflow: hidden;
            }
        </style>
    </body>

    </html>