Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B222C80
	for <keys@linux.kernel.org>; Fri,  8 Apr 2022 20:25:54 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id v13so5752618qkv.3
        for <keys@linux.kernel.org>; Fri, 08 Apr 2022 13:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7qIqpuuOkqs/lR3Gbp7XoBo5B/We7bMuHGS0bLfvzyg=;
        b=I11QDIEqm/U6ef/LJyfXC4dVap/mTfXB8zNg943ciLYDVi+tf+/oLdFatU+VjBCD8g
         I82qAySPQSHXQqMGXydvC4hn+p43fvnoNeRs+RiCFMgbXq7g4DcyN6R+krkWhKrO7RA5
         FPriQXycoMSy6iGbCAjeGsFNc3PV5mTj0CkiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7qIqpuuOkqs/lR3Gbp7XoBo5B/We7bMuHGS0bLfvzyg=;
        b=Dn21WpWrM24W7RJeR509C3BLiw1pmC5spws8ZmA/Lmt2ebqukISi91cYaNO4LXhvhm
         n76vW/UL3T3+nibUeIs+H50WElfha74Ts7waffs069DSTzUWASKkSlVR9zzofQOnsJxF
         47YXly0IzmvfyfgUVqCIyldviDR0b4PSOznXsc6We2yhWWX7JRe9dC/2kD/UyMVkBahF
         xaP8fObSNTNgF3+HvdmUjGTjww1dLTKeyO4XXRIIW6vyVM3aq0nUxBfP7thykWyci8Be
         tzh0BTEgUsZR2KmlAeZfljr+hnwJbkKc+XnCKmu9Yviykb5iaLG3GzPvufx8ukUolCaO
         ZIkg==
X-Gm-Message-State: AOAM533lptxZGf83WrtwryKybj+LcazgkvTEZHyy7VwL1AaVOabDT8zR
	jwlJmC/RLJYPon5KpqNKCkeIsnjO1IB8UdHMV636zTd+Jf8=
X-Google-Smtp-Source: ABdhPJzAmJ4roPypRUrahFrmsXSMeFUdYV7k48KaRn+R18BcBjnE0who8icoS7sTxqlXQEIvkyEiA7ZwFpumhyZ31ns=
X-Received: by 2002:a05:620a:d87:b0:67b:30f5:971f with SMTP id
 q7-20020a05620a0d8700b0067b30f5971fmr14266159qkl.512.1649449553624; Fri, 08
 Apr 2022 13:25:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
References: <02770a803ce729b68cbdf1805f67253a@walle.cc>
In-Reply-To: <02770a803ce729b68cbdf1805f67253a@walle.cc>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Fri, 8 Apr 2022 16:25:42 -0400
Message-ID: <CAMwyc-SmSwOZ=uiUJEsNOVqLdEHiVMW==MpNjG_xac5R+XfdCA@mail.gmail.com>
Subject: Re: michael@walle.cc
To: Michael Walle <michael@walle.cc>
Cc: keys@linux.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Apr 2022 at 16:22, Michael Walle <michael@walle.cc> wrote:
>
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.
