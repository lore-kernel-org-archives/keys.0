Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC3628EE
	for <keys@linux.kernel.org>; Tue, 11 Apr 2023 14:48:25 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id gb12so7175627qtb.6
        for <keys@linux.kernel.org>; Tue, 11 Apr 2023 07:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1681224504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cov6wx+BSKkE+10m0QefoIddHUorZaDiNg76hI4VEh4=;
        b=WCVcsAhFjXnt5pwGvD5ep3Q59rKOFWxmfHEQk1uGJC6ArOLtFJQNgg53252M71sXIe
         jGkE6xp+kIztXHZGpGE2JG5NcawugnsWSatvaxSATe5KHTGTlpvY5MRlq6Z86TGAwOKR
         OUy1+pP45NDV18lkwx17KmjgpbiT1YheExmew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681224504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cov6wx+BSKkE+10m0QefoIddHUorZaDiNg76hI4VEh4=;
        b=MHYTsRILgF5+iP1mny7UBMXW3/MeB1jo3Pk/tq+ojA14/ZjLtR2rT/+Mhs/TbNRIL8
         cNsZqFiksmLAbIIvqm9EYTb75PFfUEpfEM6HJOYDkETaOCwfSNieMFWUaj4JR+F+r+aQ
         6uMe/K8vIB7AzHvhSqsBQByFMWEfoqPRyT6oU4J1OAhjRYImZs46BRJ9+LVeFDxMkY/T
         qLHjOdAANtDX2KPEl1kjA7vjSGtCpNMsqQehorcPNrtmZFtatjjHlMXoiK5Hn5Jkptb8
         xaeyIOMLBkbdQsrXhUJIBtC+G+qh/Tp5Z1wKkSjT2hBb8jzuV2YRV9AoSajARwpbhztB
         PfOQ==
X-Gm-Message-State: AAQBX9dnwtTkZ+o4AllcvB7xPprxmDxtvp3zpQ7Jp9RfGNXAvUW7/FHs
	/joGi0RPtO42/KhxYqcCzeAt8ls4kL1qBXP6OBE=
X-Google-Smtp-Source: AKy350bcv+JqeOzg8SWVFxdkI8+WUKAW4cW9HGjRLlzJu1WiTFhs/NDzScewOYOOV7izY5WNN4LLhg==
X-Received: by 2002:ac8:7d52:0:b0:3d7:b045:d38 with SMTP id h18-20020ac87d52000000b003d7b0450d38mr27891041qtb.35.1681224504151;
        Tue, 11 Apr 2023 07:48:24 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id l3-20020ac87243000000b003e38f7e4562sm3614452qtp.69.2023.04.11.07.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 07:48:23 -0700 (PDT)
Date: Tue, 11 Apr 2023 10:48:22 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: pgp key update
Message-ID: <20230411-nursing-gleaming-cd6bf7@meerkat>
References: <ZDO/j1yZ9WyJbIah@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZDO/j1yZ9WyJbIah@kernel.org>

On Mon, Apr 10, 2023 at 10:49:35AM +0300, Mike Rapoport wrote:
> Hi,
> 
> Attached is an update for my pgp key

Updated, thanks.

-K
