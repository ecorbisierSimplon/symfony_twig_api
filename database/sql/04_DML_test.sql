INSERT INTO
    `tpa_users` (
        `email`, `lastname`, `firstname`, `user_password`, `roles_id`
    )
VALUES (
        'email@email.fr', 'Nom', 'Prénom', '1234', (
            SELECT role_id
            FROM tpa_roles r
            WHERE
                r.role_code = 'role@webmaster'
        )
    );