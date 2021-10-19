Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F3E2C88
	for <keys@linux.kernel.org>; Tue, 19 Oct 2021 12:41:40 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id j12so12116841qvk.12
        for <keys@linux.kernel.org>; Tue, 19 Oct 2021 05:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vmSq1UFxqsKT5B6rixXV1EqSwDSsL+K99HbLgkltt2k=;
        b=HeifTPHg05ckm5jRpoXttZZ16s5Qbx1VOtqslHY/XmoHcYsD3laiYZEjc4b+5kRWbv
         RJSnEXPX3s+gI54bZI8yynj84+80mdCdyvRJFGNRde/OzFoG+ZS8uWYbxNKWiMPOpsas
         iRkt0NzmnYRQdMk1/lfhhQYMvbw3bHvTc3fpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vmSq1UFxqsKT5B6rixXV1EqSwDSsL+K99HbLgkltt2k=;
        b=cyGtbVnxTmi1LapTRnw5e7ZM16rmNUaxTf3hxsIheK7UAVr+B6CIR8GYL8g+9KUAu9
         PhL8uGQNJRlcv9Ixqtr51Rkqdg1mhu+wWIQDx7O6L84OjR22Su0uuqR/S3zIB19TpaAH
         UrEhfpsAOL2rR0sH1DtO0jyPRJztf8pKp4TUkFNa1PzjTkX9r2NAnjZkcPerRH7RLtDP
         DEkOc0X33A3AEhi0xrd/dAJKiP0Y+D5iuygVecL0JmuKXzbchhd/eAUdwWPLo1JZSuAf
         4kHTzAlWrKHAllVJP0fMUNioM4c/tDM9NW3sKOj6XXviEYu16HFXyqA1L5WqAVb4apQT
         Lznw==
X-Gm-Message-State: AOAM531aVqgr8KsLHK4+iZm8pv3UmnTRvSkpwIOUcfCdNZIBJiMgBNUJ
	6xxnCXi40SSvhbs/RHmKg+gCb+1ra83ISg==
X-Google-Smtp-Source: ABdhPJyNed03uG6fpBpawaFtnCht37QszjIXY3G2/NaTMViSCOyerVi+7zZaAAOhmzdeCOS1jjIm+A==
X-Received: by 2002:a05:6214:1269:: with SMTP id r9mr31209369qvv.23.1634647299656;
        Tue, 19 Oct 2021 05:41:39 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id z6sm545213qtj.90.2021.10.19.05.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 05:41:39 -0700 (PDT)
Date: Tue, 19 Oct 2021 08:41:37 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: keys@linux.kernel.org
Subject: Re: geert@linux-m68k.org
Message-ID: <20211019124137.x7m62kmold2qdojz@meerkat.local>
References: <E1mcj5H-00Dm91-8J@rox.of.borg>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <E1mcj5H-00Dm91-8J@rox.of.borg>

On Tue, Oct 19, 2021 at 08:58:51AM +0200, Geert Uytterhoeven wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
