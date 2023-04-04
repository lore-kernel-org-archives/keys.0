Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E057C
	for <keys@linux.kernel.org>; Tue,  4 Apr 2023 12:27:21 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id cu4so23271877qvb.3
        for <keys@linux.kernel.org>; Tue, 04 Apr 2023 05:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1680611240;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kCZyL9rlHSDtPI1Pbin+eESnY1Me+xSyru0HeOTVzL4=;
        b=It9gmKCR0xsTcHNJl5Lpe/MGsLBsQ+gPT8VJjuM2z1iloEiknimMYd7qX8CDo3vU6H
         3aflmBWp1do6fOzd3MKheg8Ffg+4UXHn/r49Vekag80pw+jpYyUplcV8AXNHJCK3tk/b
         X58BbxtC5dNvO+EnlOvlNYpV4nFWbRIHkTy+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680611240;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kCZyL9rlHSDtPI1Pbin+eESnY1Me+xSyru0HeOTVzL4=;
        b=CQyu7XzHI6MCFYY8o5VHo+hEjBo0CYzA1Mk2GcaSNFBb3YRaD8ioe+hj/d8j5xAvFJ
         fiZikSurWIOTVNaO8H77fXlPxWD9x4RalRvi1xkiVYZRMQfWswxl+1syVghLaPZF19rx
         zAUJypi5GVqDmbs8efe6npcAIMpSoEoXSPSKvJlo3n3v8tuDtqcEU2b9oWaTudyEfWkK
         aKDrD5HAM8bzvud84jb3xDjAO8zMgnu9nVZedFwKLnKEZCoGgPjqBZGc2zB2ob3lqqKQ
         upVn+OaImfQkeEgBLBr4L+onWSO6S/GAUUsD5n/7CwfpZFPnmRV6iCevDLK5mV7sOobO
         2m+A==
X-Gm-Message-State: AAQBX9dJwyfnfNP45aq9UJlCdMtNcVTwphlS9tnYWBOt2ux/O2ZKXEY/
	WwUUTk+o6yt3t+rNIGnJIhzqoJvvrHhOWW7LKwY=
X-Google-Smtp-Source: AKy350bNjKwBFXIwJm87G2qDQ3WZmURO2KkuJfKk8JEaoJS4HkLshMPVZ/od5vEo4dqr/zXmOJBmAw==
X-Received: by 2002:a05:6214:29eb:b0:5c2:3e10:53e4 with SMTP id jv11-20020a05621429eb00b005c23e1053e4mr2403224qvb.15.1680611240228;
        Tue, 04 Apr 2023 05:27:20 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id l16-20020a0cc210000000b005dd8b934588sm3360746qvh.32.2023.04.04.05.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 05:27:19 -0700 (PDT)
Date: Tue, 4 Apr 2023 08:27:18 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH pgpkeys] korg-refresh-keys: Fix a race condition
Message-ID: <20230404-update-viscous-f8c9fb@meerkat>
References: <20230404054146.3201386-1-uwe@kleine-koenig.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230404054146.3201386-1-uwe@kleine-koenig.org>

On Tue, Apr 04, 2023 at 07:41:46AM +0200, Uwe Kleine-König wrote:
> The script called git fetch and git pull. Two assumptions break if the
> remote repository changed in between. So only merge @{u} instead of
> pulling.

Thank you for catching that, applied.

-K
