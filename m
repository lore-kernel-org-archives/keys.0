Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F976FA0
	for <keys@linux.kernel.org>; Mon, 16 Jan 2023 17:37:55 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id d16so12220981qtw.8
        for <keys@linux.kernel.org>; Mon, 16 Jan 2023 09:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ojXkWs6muX3LwvWRyHmFnh0tfoVPEJMemtbrkAYyM9s=;
        b=BLNS0O/N57owhn0eeS6PSQtm27wjz+xgkjOvAZEVayrW0tGdxI0KhiAT6KtVtb3r6X
         QXB+Cy7QFk0piWUiToulrp1+0utLnuY8mpr7dJukByGPLsqdqozqDNMdZWTCcKBbJC2b
         B26vUy/p9vNCK9ZR9msKx4weERhXSNrU5WL9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojXkWs6muX3LwvWRyHmFnh0tfoVPEJMemtbrkAYyM9s=;
        b=aqLpBoX4JztMtGDbuwzLmfESoVNQk0ba3rDBxNF7+ETzRXgPrz5WQMFSdV0nHKC7X2
         dDUOADfzkTdnTBcKs4YmqJzFy4BdEAP6VxXmY0xfCYZC1nQCHnm4o0wfHVN9umMHDYLS
         l4Mstb9UzOlRf5ojbtfxVN1eZvDr0AmXu51VgmkKIyjRuCcT2Xry/GNwt7vlaMRYg0D0
         I4XBopHOHF9aPXoJpIzjwZAuQW5Ng2ezizRtaxDTh7NLc9zM3lMOsuqlysa9/RzUClla
         YkknVSkgiwwvwLc+1Yv1lAVBw47+kg4NkpV7vYlB3Z4o8N9WQ+I/bglWmVPFXexK4zUP
         G0gA==
X-Gm-Message-State: AFqh2krqeKJdpxJATtiZw4W87FOhPgtAaxpxfrwbVLcXcuE1BiXDCN2a
	cr6Sx86JvYUSPpCXU6lnscBRrMoEXtVtltJa
X-Google-Smtp-Source: AMrXdXuAZfI0fjlTCX0VqK+rJD9DcDvxACZbccdcJLVxbbxubPzYDceQerGV0sT3g4AJZ0lSw/OdVg==
X-Received: by 2002:a05:622a:5c19:b0:3ad:d2d4:2503 with SMTP id gd25-20020a05622a5c1900b003add2d42503mr45628717qtb.7.1673890674465;
        Mon, 16 Jan 2023 09:37:54 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id x10-20020a05620a448a00b006faa2c0100bsm18811749qkp.110.2023.01.16.09.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 09:37:54 -0800 (PST)
Date: Mon, 16 Jan 2023 12:37:52 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: Updated pgp key
Message-ID: <20230116173752.wjx3c6tfzag6wqq6@meerkat.local>
References: <Y8UpQXYkOVR14kbV@linutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y8UpQXYkOVR14kbV@linutronix.de>

On Mon, Jan 16, 2023 at 11:38:57AM +0100, Sebastian Andrzej Siewior wrote:
> Hi,
> 
> new year, same procedure.

Updated, thanks.

-K
