Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BA52F27
	for <keys@linux.kernel.org>; Mon,  7 Feb 2022 17:36:56 +0000 (UTC)
Received: by mail-vs1-f42.google.com with SMTP id m24so459414vsp.7
        for <keys@linux.kernel.org>; Mon, 07 Feb 2022 09:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=PCzOfDucTM4977wJw0B11lUdo7KbvUwdPR64iP9aWLQ=;
        b=MJhY4WMJctxvAGxJdobAVJ6eAyQL04v406JVFZf3MdPPGV7H/ROIy7rM0K5noAcc1Y
         NiJfShVGsZ6zvNL3EWlkXRP9+ccGJBG81uVnhjlfwnJKLJctAWsZtGBZrT1KjwlvEKbb
         raXdsJYjMp9nyESoF1W9KN69NhL6VZflNahJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=PCzOfDucTM4977wJw0B11lUdo7KbvUwdPR64iP9aWLQ=;
        b=59oXTGFWk4DJ/Z6T1bdWqmtotAhwUMfAgUix6wEpMDpChUhm5ALns+C0bW+oOGthTJ
         68Ro/jaViG1IJU2P69BOnM3HMlShVGZv6iFHjkmKPnnPN9epoKQcAuUvdst6BIVN4Ka3
         6wqcGWTLHskeK3mJZmh9hcHaySCkZCG9QhfjmhZDV2d6Fu1TpaEWR5mDh/ebVKco5toq
         qYZHyA7WvUq5DPaPV/+mE3ggJi5by+v1VspI5vT/6boCd6nJI6YpWa+mS358IZagJdDy
         Iyc4xv/h3V+Az30qmEVsPme1BqCAHhvSoLjjShbkL01LOVxDyuR2W2YkQMlTMUFnJ+k2
         igvA==
X-Gm-Message-State: AOAM531LFGv8kLEEJO8yUoL4EEn6fm8IaRuKWo5pTUAmOeg+7be9ob8f
	yoEgKXx7ebIYy8dnEvm75m6wIIedzRIlmw==
X-Google-Smtp-Source: ABdhPJxRhlDExrpyCo0CUn/J93oJP2fVYtsWYqy/t5YILbW1WX7zqDUXcHSlroAwzzFp4EqFNJj33w==
X-Received: by 2002:a05:6102:304e:: with SMTP id w14mr183062vsa.31.1644255415279;
        Mon, 07 Feb 2022 09:36:55 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id e22sm2358749vko.51.2022.02.07.09.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Feb 2022 09:36:55 -0800 (PST)
Date: Mon, 7 Feb 2022 12:36:53 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update
Message-ID: <20220207173653.agcjbdeudbmmkonw@meerkat.local>
References: <CAJ+HfNg898_a2gyQ-jfwwteKGRSJMa12JOaez1TCieEez7MFRg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ+HfNg898_a2gyQ-jfwwteKGRSJMa12JOaez1TCieEez7MFRg@mail.gmail.com>

On Sat, Feb 05, 2022 at 02:56:07PM +0100, Björn Töpel wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.
